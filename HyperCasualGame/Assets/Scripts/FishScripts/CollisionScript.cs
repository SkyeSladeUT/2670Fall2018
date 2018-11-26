using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class CollisionScript : MonoBehaviour
{
	public Player player;
	public GameObject playerObject;
	public Text TotalCoinText;
	public ColorData ActiveColor;
	public Color InvinsibleColor;
	private float temp;
	public FloatData BoostTime;

	private void Start()
	{
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
				player.Score++;
				if (player.DoubleCoins)
					player.CoinsCollected++;
				TotalCoinText.text = "$" + player.CoinsCollected;
				break;
			case "Shield":
				player.Invinsible = true;
				StartCoroutine(ShieldTimer());
				break;
			default:
				break;
		}
	}

	IEnumerator ShieldTimer()
	{
		playerObject.GetComponent<Renderer>().material.color = InvinsibleColor;
		yield return new WaitForSeconds(BoostTime.Value);
		playerObject.GetComponent<Renderer>().material.color = ActiveColor.Value;
		yield return new WaitForSeconds(.25f);
		player.Invinsible = false;
	}
}
