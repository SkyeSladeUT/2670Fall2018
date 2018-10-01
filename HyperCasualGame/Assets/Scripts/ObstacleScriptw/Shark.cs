using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Shark : MonoBehaviour
{
    public MovePattern Up;
    public MovePattern Down;
    private MovePattern Current;
    private CharacterController controller;
    private bool GameOver;

    private void Start()
    {
        controller = GetComponent<CharacterController>();
        Current = Up;
        GameOver = false;
        StartCoroutine("UpDownMovement");
    }

    private void Update() {
        Current.Invoke(controller, transform); 
    }

    IEnumerator UpDownMovement()
    {
        while (!GameOver)
        {
            yield return new WaitForSeconds(2);
            if (Current == Up)
            {
                Current = Down;
            }
            else
            {
                Current = Up;
            }
        }
    }
}
