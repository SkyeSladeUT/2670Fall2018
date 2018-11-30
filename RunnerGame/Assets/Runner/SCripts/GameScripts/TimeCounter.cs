using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TimeCounter : MonoBehaviour
{

	public Text ScoreCounter;
	public Runner player;
	private float TimeTotal;

	private void Start()
	{
		ScoreCounter.text = "0.00";
		TimeTotal = 0;
		player.Score = 0;
		StartCoroutine(Counter());
	}

	IEnumerator Counter()
	{
		while (true)
		{
			yield return new WaitForSeconds(.01f);
			TimeTotal += .01f;
			TimeTotal = Mathf.Round(TimeTotal * 100f) / 100f;
			ScoreCounter.text = TimeTotal.ToString("F2");
		}
	}

	public void EndGameScore()
	{
		player.Score = TimeTotal;
	}

}
