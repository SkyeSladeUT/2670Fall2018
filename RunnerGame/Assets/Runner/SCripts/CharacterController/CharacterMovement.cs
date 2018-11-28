using System.Collections;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class CharacterMovement : MonoBehaviour
{
    public MovePattern movePattern;
    private CharacterController controller;
    private Vector3 NewPosition;
    private bool CanMoveHorizontal;
    private int HorizontalLayer;

    private void Start()
    {
        movePattern.MoveZ.value = 20;
        CanMoveHorizontal = true;
        HorizontalLayer = 0;
        controller = GetComponent<CharacterController>();
    }

    private void Update() {
 
        if (CanMoveHorizontal)
        {
            if (Input.GetKeyDown(KeyCode.RightArrow) && HorizontalLayer < 1)
            {
                NewPosition = transform.position;
                NewPosition.x += 3f;
                CanMoveHorizontal = false;
                HorizontalLayer += 1;
                StartCoroutine(MoveRight());
            }
            else if (Input.GetKeyDown(KeyCode.LeftArrow) && HorizontalLayer > -1)
            {
                NewPosition = transform.position;
                NewPosition.x -= 3;
                CanMoveHorizontal = false;
                HorizontalLayer -= 1;
                StartCoroutine(MoveLeft());
            }
        }
        
        movePattern.Invoke(controller, transform); 
    }

    private IEnumerator MoveRight()
    {
        while (transform.position.x <= NewPosition.x)
        {
            transform.Translate(Vector3.right*Time.deltaTime*15);
            yield return new WaitForFixedUpdate();
        }

        CanMoveHorizontal = true;
    }
	
    private IEnumerator MoveLeft()
    {
        while (transform.position.x >= NewPosition.x)
        {
            transform.Translate(Vector3.left*Time.deltaTime*15);
            yield return new WaitForFixedUpdate();
        }

        CanMoveHorizontal = true;
    }

}
