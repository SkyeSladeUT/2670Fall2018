using System.Collections;
using System.Collections.Generic;
using System.Net.Mime;
using UnityEngine;
using UnityEngine.UI;

public class StartMenu : MonoBehaviour
{

	public Player player;
	public Text HighScoreText;
	public Text CashText;

	private void Start()
	{
		HighScoreText.text = "Highscore: " + player.HighScore;
		CashText.text = "$" + player.Coins;
	}
}
