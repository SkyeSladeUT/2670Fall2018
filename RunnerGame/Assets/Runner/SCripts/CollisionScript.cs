using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class CollisionScript : MonoBehaviour
{
	public Runner player;
	private void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "Obstacle":
				SceneManager.LoadScene(SceneManager.GetActiveScene().name);
				break;
			case "Coin":
				Destroy(other.gameObject);
				player.CollectedCoins++;
				break;
			default:
				break;
		}
	}
}
