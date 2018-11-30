using System;
using System.Collections;
using System.Collections.Generic;
using JetBrains.Annotations;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

[CreateAssetMenu]
public class ChangeScene : ScriptableObject
{
	public string SceneName;

	public void SceneChange()
	{
		SceneManager.LoadScene(SceneName);
	}


}
