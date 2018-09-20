using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.UI;

public class Collector : MonoBehaviour
{
	public PLayer player;
	private int ShieldLife;
	public Text ShieldLifeText;
	public GameObject ShieldOutline;
	public Text ScoreText;

	private void Start()
	{
		ShieldOutline.SetActive(false);
		player.Score = 0;
		ScoreText.text = "Score: " + player.Score.ToString();
	}

	private void OnTriggerEnter(Collider other)
	{
		
		switch (other.tag) 
		{
				case "Shield" :
					Destroy(other.gameObject);
					player.IsShieldActive = true;
					ShieldOutline.SetActive(true);
					ShieldLife = 10;
					StartCoroutine("Shield");
					break;
				case "Coin":
					Destroy(other.gameObject);
					player.Score += 10;
					ScoreText.text = "Score: " + player.Score.ToString();
					break;
				case "Enemy" :
					if (!player.IsShieldActive)
					{
						player.Score -= 10;
						ScoreText.text = "Score: " + player.Score.ToString();
					}
					break;
				default:
					break;
		}
	}

	IEnumerator Shield()
	{
		while (ShieldLife > 0)
		{
			ShieldLifeText.text = ShieldLife.ToString();
			ShieldLife--;
			yield return new WaitForSeconds(1);
			if (ShieldLife <= 0)
			{
				player.IsShieldActive = false;
				ShieldOutline.SetActive(false);
				ShieldLifeText.text = "";
			}
		}
		
	}
}
