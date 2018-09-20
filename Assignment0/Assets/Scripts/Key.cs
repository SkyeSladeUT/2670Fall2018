using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Key : MonoBehaviour {

	public GameObject[] Enemy1;
	public GameObject[] Enemy2;
	public ButtonScript button;


	private void Start () {
		button.CurrentButtonActive = false;
		foreach (var door in Enemy2) {
			door.SetActive (false);
		}

	}
	private void OnTriggerEnter (Collider other) {
		if (other.CompareTag("Player"))
		{
			foreach (var door in Enemy1)
			{
				door.SetActive(button.CurrentButtonActive);
			}

			foreach (var door in Enemy2)
			{
				door.SetActive(!button.CurrentButtonActive);
			}

			button.CurrentButtonActive = !button.CurrentButtonActive;
		}
	}
}