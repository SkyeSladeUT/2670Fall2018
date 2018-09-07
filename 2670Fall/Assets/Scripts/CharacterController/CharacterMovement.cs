using UnityEngine;
using System.Collections;
[RequireComponent(typeof(CharacterController))]
public class CharacterMovement : MonoBehaviour {
    public float speed = 6.0F;
    public float jumpSpeed = 8.0F;
    public float gravity = 20.0F;
    public FloatData MoveX, MoveY, MoveZ, Jump;
    private Vector3 moveDirection = Vector3.zero;
    private CharacterController controller;


    private void Start()
    {
        controller = GetComponent<CharacterController>();
    }

    private void Update() {
  
        if (controller.isGrounded)
        {
            moveDirection.Set(MoveX.Value, MoveY.Value, MoveZ.Value);
            moveDirection = transform.TransformDirection(moveDirection);
            moveDirection *= speed;
            moveDirection.y = jumpSpeed*Jump.Value;
        }
        
        moveDirection.y -= gravity * Time.deltaTime;
        controller.Move(moveDirection * Time.deltaTime);
    }
}
