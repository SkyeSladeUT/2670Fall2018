using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class CollisionScript : MonoBehaviour
{
	public Player player;
	public MovePattern movePattern;
	public Text TotalCoinText;
	private bool isBoost;
	private float temp;

	private void Start()
	{
		isBoost = false;
		
		player.CoinsCollected = 0;
		TotalCoinText.text = "$" + player.CoinsCollected;
	}

	private void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "obstacle":
				if(!isBoost)
					SceneManager.LoadScene("EndGameScene");
				break;
			case "Coin":
				player.CoinsCollected++;
				TotalCoinText.text = "$" + player.CoinsCollected;
				Destroy(other.gameObject);
				break;
			case "Boost":
				isBoost = true;
				temp = movePattern.MoveX.Value;
				Destroy(other.gameObject);
				StartCoroutine(BoostTimer());
				break;
			default:
				break;
		}
	}

	IEnumerator BoostTimer()
	{
		movePattern.MoveX.value = 100;
		yield return new WaitForSeconds(3);
		isBoost = false;
		movePattern.MoveX.value = temp;
	}
}
