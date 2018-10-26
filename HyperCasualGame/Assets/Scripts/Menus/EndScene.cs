using System.Collections;
using System.Collections.Generic;
using System.Security.Permissions;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class EndScene : MonoBehaviour
{
	public Text ScoreText;
	public Text CoinText;
	public Text HighScore;
	public Text High;
	public Player player;

	private void Start()
	{
		HighScore.text = "";
		ScoreText.text = "Score: " + player.Score;
		CoinText.text = "$" + player.Coins + " + $" + player.CoinsCollected;
		player.Coins += player.CoinsCollected;
		player.DoubleCoins = false;
		if (player.Score > player.HighScore)
		{
			player.HighScore = player.Score;
			HighScore.text = "HIGHSCORE";
		}

		High.text = "High: " + player.HighScore;
	}
}
