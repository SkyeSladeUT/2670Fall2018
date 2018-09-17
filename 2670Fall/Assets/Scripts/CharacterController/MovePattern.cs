using JetBrains.Annotations;
using UnityEngine;

[CreateAssetMenu]
public class MovePattern : ScriptableObject {

    public FloatData MoveX, MoveY, MoveZ, Jump, Gravity;
    public FloatData RotX, RotY, RotZ;


    protected Vector3 moveDirection;
    private Vector3 rotDirection;

    public virtual void Invoke(CharacterController controller, Transform transform)
    {
        if (controller.isGrounded)
        {
            Move(transform);
        }
        
        else
        {
            moveDirection.x = MoveX.Value;
            moveDirection.z = MoveZ.Value;
            rotDirection.Set(RotX.Value, RotY.Value, RotZ.Value);
            transform.Rotate(rotDirection);
            moveDirection = transform.TransformDirection(moveDirection);
            
        }

        Move(controller);
    }

    protected void Move(CharacterController controller)
    {
        moveDirection.y -= Gravity.Value * Time.deltaTime;
        controller.Move(moveDirection * Time.deltaTime);
    }

    protected void Move(Transform transform)
    {
        moveDirection.Set(MoveX.Value, MoveY.Value, MoveZ.Value);
        rotDirection.Set(RotX.Value, RotY.Value, RotZ.Value);
        transform.Rotate(rotDirection);
        moveDirection = transform.TransformDirection(moveDirection);
        moveDirection.y = Jump.Value;
    }


}
