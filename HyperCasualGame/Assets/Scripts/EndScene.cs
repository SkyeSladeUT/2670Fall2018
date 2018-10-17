using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class EndScene : MonoBehaviour
{
	public Text ScoreText;
	public Player player;

	private void Start()
	{
		ScoreText.text = "Score: " + player.Score;
	}
}
