using JetBrains.Annotations;
using UnityEngine;
[CreateAssetMenu]
public class MovePattern : ScriptableObject {

    public FloatData MoveX, MoveY, MoveZ, Jump, Gravity;
    public FloatData RotX, RotY, RotZ;

    private Vector3 moveDirection;
    private Vector3 rotDirection;

    public void Invoke(CharacterController controller, Transform transform)
    {
        if (controller.isGrounded)
        {
            moveDirection.Set(MoveX.Value, MoveY.Value, MoveZ.Value);
            rotDirection.Set(RotX.Value, RotY.Value, RotZ.Value);
            transform.Rotate(rotDirection);
            moveDirection = transform.TransformDirection(moveDirection);
            moveDirection.y = Jump.Value;
        }
        
        moveDirection.y -= Gravity.Value * Time.deltaTime;
        controller.Move(moveDirection * Time.deltaTime);
    }
}
