using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class EndScene : MonoBehaviour
{

	public Runner player;
	public Text ScoreText;
	public Text HighScore;
	public Text CoinText;

	private void Start()
	{
		if (player.Score > player.HighScore)
		{
			player.HighScore = player.Score;
		}

		ScoreText.text = player.Score.ToString();
		HighScore.text = "High Score: " + player.HighScore;
		CoinText.text = "$" + player.Coins + "+" + player.CollectedCoins;
		player.Coins += player.CollectedCoins;
	}
}
