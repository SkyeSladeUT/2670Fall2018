using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices.ComTypes;
using UnityEngine;

public class ObstacleGeneration : MonoBehaviour
{
	public GameObject Player;
	public List<GameObject> Obstacles;
	private Vector3 position;
	public FloatData TimeMin, TimeMax, Offset;
	
	private void Start()
	{
		TimeMin.value = 1.0f;
		TimeMax.value = 3.0f;
		Offset.value = 0;
		StartCoroutine(GenerateObstacles());
	}

	IEnumerator GenerateObstacles()
	{
		while (true)
		{
			var RandomSeconds = Random.Range(TimeMin.Value, TimeMax.Value);
			yield return new WaitForSeconds(RandomSeconds);
			position = Player.transform.position;
			position.y = 0;
			var RandomNum = Random.Range(0, Obstacles.Count);
			switch (Obstacles[RandomNum].GetComponent<ObjectID>().ID.name)
			{
				case "Spike":
					position.y += 10;
					position.x += (Offset.Value + 15);
					break;
				case "Jellyfish":
					position.x += (Offset.Value + 7);
					position.y -= 12;
					break;
				case "Torpedo":
					var RandomY = Random.Range(-4.5f, 4.5f);
					position.y += RandomY;
					position.x += (Offset.Value + 20);
					break;
				case "Stalagmite":
					position.y = Random.Range(-10f, -8.5f);
					position.x += (Offset.Value + 15);
					break;
				case "Stalagtite":
					position.y = Random.Range(8.5f, 10f);
					position.x += (Offset.Value + 15);
					break;
				default:
					break;
			}
			Instantiate(Obstacles[RandomNum], position, Obstacles[RandomNum].transform.rotation);
		}
	}
}
