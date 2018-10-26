using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class CollisionScript : MonoBehaviour
{
	public Player player;
	public GameObject playerObject;
	//public MovePattern movePattern;
	public Text TotalCoinText;
	public ColorData ActiveColor;
	public Color InvinsibleColor;
	private float temp;
	public FloatData BoostTime;

	private void Start()
	{
		//player.isBoost = false;
		player.Invinsible = false;
		player.CoinsCollected = 0;
		TotalCoinText.text = "$" + player.CoinsCollected;
	}

	private void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "obstacle":
				if(!player.Invinsible)
					SceneManager.LoadScene("EndGameScene");
				break;
			case "Coin":
				player.CoinsCollected++;
				if (player.DoubleCoins)
					player.CoinsCollected++;
				TotalCoinText.text = "$" + player.CoinsCollected;
				Destroy(other.gameObject);
				break;
			/*case "Boost":
				player.isBoost = true;
				player.CoinsCollected++;
				TotalCoinText.text = "$" + player.CoinsCollected;
				temp = movePattern.MoveX.Value;
				Destroy(other.gameObject);
				StartCoroutine(BoostTimer());
				break;*/
			case "Shield":
				player.Invinsible = true;
				Destroy(other.gameObject);
				StartCoroutine(ShieldTimer());
				break;
			default:
				break;
		}
	}

	/*IEnumerator BoostTimer()
	{
		movePattern.MoveX.value = 100;
		yield return new WaitForSeconds(BoostTime.Value);
		player.isBoost = false;
		movePattern.MoveX.value = temp;
		player.Score += (int) BoostTime.Value * 2;
	}*/

	IEnumerator ShieldTimer()
	{
		playerObject.GetComponent<Renderer>().material.color = InvinsibleColor;
		yield return new WaitForSeconds(BoostTime.Value);
		playerObject.GetComponent<Renderer>().material.color = ActiveColor.Value;
		player.Invinsible = false;
	}
}
