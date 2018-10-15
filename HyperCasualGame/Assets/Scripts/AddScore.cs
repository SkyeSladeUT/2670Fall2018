using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class AddScore : MonoBehaviour
{

	public Player player;
	public Text playerScore;

	private void Start()
	{
		player.Score = 0;
		playerScore.text = "Score: 0";
	}

	public void IncreaseScore()
	{
		player.Score++;
		playerScore.text = "Score: " + player.Score;
	}
}
