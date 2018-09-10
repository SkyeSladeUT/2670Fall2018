using UnityEngine;
[RequireComponent(typeof(CharacterController))]
public class CharacterMovement : MonoBehaviour
{

    public MovePattern movePattern;
    private CharacterController controller;


    private void Start()
    {
        controller = GetComponent<CharacterController>();
    }

    private void Update() {
        movePattern.Invoke(controller, transform);
        
    }
}
