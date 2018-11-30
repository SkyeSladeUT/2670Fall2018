using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MenuChange : MonoBehaviour
{

	public List<string> SceneNames;
	public List<GameObject> dots;
	public ChangeScene menu;
	private int index;

	private void Start()
	{
		index = 0;
		foreach (var dot in dots)
		{
			dot.SetActive(false);
		}
		dots[0].SetActive(true);
		menu.SceneName = SceneNames[0];
	}

	public void Up()
	{
			if (index == 0)
			{
				index = SceneNames.Count - 1;
				menu.SceneName = SceneNames[index];
				dots[0].SetActive(false);
				dots[index].SetActive(true);
			}
			else
			{
				index--;
				menu.SceneName = SceneNames[index];
				dots[index + 1].SetActive(false);
				dots[index].SetActive(true);
			}
	}

	public void Down()
	{
		if (index >= SceneNames.Count - 1)
		{
			index = 0;
			menu.SceneName = SceneNames[index];
			dots[SceneNames.Count -1].SetActive(false);
			dots[index].SetActive(true);
		}
		else
		{
			index++;
			menu.SceneName = SceneNames[index];
			dots[index-1].SetActive(false);
			dots[index].SetActive(true);
		}

	}


}
