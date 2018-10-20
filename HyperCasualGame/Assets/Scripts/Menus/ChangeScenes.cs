using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class ChangeScenes : MonoBehaviour {

	public void StartGame()
	{
		SceneManager.LoadScene("Game");
	}

	public void Store()
	{
		SceneManager.LoadScene("Store");
	}

	public void Menu()
	{
		SceneManager.LoadScene("Menu");
	}

	public void ColorStore()
	{
		SceneManager.LoadScene("ColorStore");
	}
}
