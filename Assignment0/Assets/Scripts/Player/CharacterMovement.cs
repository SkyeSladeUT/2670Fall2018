﻿using System.Collections;
using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(CharacterController))]
public class CharacterMovement : MonoBehaviour
{

    public MovePattern movePattern;
    public MovePattern Frozen;
    private MovePattern Current;
    private CharacterController controller;
    public Transform SpawnPoint;
    private int countdown = 3;
    public Text CountDownText;
    public PLayer player;



    private void Start()
    {
        player.GameOver = false;
        controller = GetComponent<CharacterController>();
        Current = movePattern;
        //CountDownText.text = "";
        //StartCoroutine("CountDown");
    }

    private void Update() {
        Current.Invoke(controller, transform);
        if (player.GameOver)
        {
            Current = Frozen;
            CountDownText.text = "TIMES UP";
        }
        

    }

    private void OnTriggerEnter(Collider other)
    {
        if (!player.IsShieldActive)
        {
            if (other.CompareTag("Enemy"))
            {
                transform.position = SpawnPoint.position;
            }
        }
    }

    IEnumerator CountDown()
    {
        while (countdown >= 0)
        {
            if(countdown > 0 )
            {
                CountDownText.text = countdown.ToString();
                countdown--;
            }
            else if(countdown == 0)
            {
                CountDownText.text = "GO";
                Current = movePattern;
                yield return new WaitForSeconds(2);
                CountDownText.text = "";
                countdown--;
            }

            yield return new WaitForSeconds(1.0f);
        }
    }



}