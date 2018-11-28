using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
[CreateAssetMenu]
public class ChangeScene : ScriptableObject
{
	public string SceneName;

	public void SceneChange()
	{
		SceneManager.LoadScene(SceneName);
	}

}
