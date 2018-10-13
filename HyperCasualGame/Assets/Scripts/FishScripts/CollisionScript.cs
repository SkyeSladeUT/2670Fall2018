using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CollisionScript : MonoBehaviour
{
	private void OnTriggerEnter(Collider other)
	{
		switch (other.tag)
		{
			case "obstacle":
				SceneManager.LoadScene(SceneManager.GetActiveScene().name);
				break;
			default:
				break;
		}
	}
}
