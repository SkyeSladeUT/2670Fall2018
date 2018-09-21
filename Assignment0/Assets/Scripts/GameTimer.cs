using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class GameTimer : MonoBehaviour
{
    public Text TimerText;
    public int TimeLeft = 100;
    public PLayer player;
    
    private void Start()
    {
        TimerText.text = "Time: " + TimeLeft.ToString();
        StartCoroutine("Timer");
    }

    IEnumerator Timer()
    {
        while (TimeLeft > 0)
        {
            TimerText.text = "Time: " + TimeLeft.ToString();
            TimeLeft--;
            yield return new WaitForSeconds(1);
        }

        TimerText.text = "Time: 0";
        player.GameOver = true;
    }
    
}
