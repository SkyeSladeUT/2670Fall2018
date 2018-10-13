using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CollisionScript : MonoBehaviour
{

	private Vector3 SpawnPoint;
	void Start ()
	{
		SpawnPoint = gameObject.transform.position;
	}

	private void OnCollisionEnter(Collision other)
	{
		//gameObject.transform.position = SpawnPoint;
		SceneManager.LoadScene(SceneManager.GetActiveScene().name);
	}
}
