using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices.ComTypes;
using UnityEngine;

public class ObstacleGeneration : MonoBehaviour
{
	public GameObject Player, Wall;
	public List<GameObject> Obstacles;
	private Vector3 position;
	public FloatData TimeMin, TimeMax, Offset;
	
	private void Start()
	{
		TimeMin.value = 1.0f;
		TimeMax.value = 3.0f;
		Offset.value = 100;
		StartCoroutine(GenerateObstacles());
	}

	IEnumerator GenerateObstacles()
	{
		while (true)
		{
			var RandomSeconds = Random.Range(TimeMin.Value, TimeMax.Value);
			yield return new WaitForSeconds(RandomSeconds);
			var RandomX = 0;
			position = Player.transform.position;
			position.z += Offset.Value;
			var RandomNum = Random.Range(0, Obstacles.Count);
			switch (Obstacles[RandomNum].GetComponent<ObjectID>().ID.name)
			{
				case "FullBar":
					//Can slide under or over
					//Across the Whole Screen
					position.x = 0;
					break;
				case "MediumBar":
					//Across 2/3s of screen
					RandomX = Random.Range(0, 2);
					if (RandomX == 0)
						position.x = -1.5f;
					else
						position.x = 1.5f;
					break;
				case "SmallBarEnclosed":
					//Must Slide under/ Jump over the specific spot
					RandomX = Random.Range(0, 3);
					position.y = Wall.transform.position.y;
					switch (RandomX)
					{
						case 0:
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = -3.1f;
							break;
						case 1:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							break;
						case 2:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3.1f;
							break;
					}
					break;
				case "SmallBar":
					//across 1/3rd of map
					RandomX = Random.Range(0, 3);
					position.x = (RandomX - 1) * 3f;
					break;
				case "LongRock":
					//Only Jump over
					//Across the whole screen
					position.x = 0;
					break;
				case "MediumRock":
					//across 2/3rds of screen
					RandomX = Random.Range(0, 2);
					if (RandomX == 0)
						position.x = -1.5f;
					else
						position.x = 1.5f;
					break;
				case "SmallRock":
					//across 1/3rd of screen
					RandomX = Random.Range(0, 3);
					position.x = (RandomX-1) * 3f;
					break;
				case "SmallRockEnclosed":
					RandomX = Random.Range(0, 3);
					position.y = Wall.transform.position.y;
					switch (RandomX)
					{
						case 0:
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = -3.1f;
							break;
						case 1:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							break;
						case 2:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3.1f;
							break;
					}
					break;
				case "LongHole":
					//must slide under
					//across whole screen
					position.x = 0;
					break;
				case "MediumHole":
					//across 2/3rds of screen
					RandomX = Random.Range(0, 2);
					if (RandomX == 0)
						position.x = -1.5f;
					else
						position.x = 1.5f;
					break;
				case "SmallHole":
					//across 1/3rd of screen
					RandomX = Random.Range(0, 3);
					position.x = (RandomX-1)*3.1f;
					break;
				case "SmallHoleEnclosed":
					RandomX = Random.Range(0, 3);
					position.y = Wall.transform.position.y;
					switch (RandomX)
					{
						case 0:
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = -3.1f;
							break;
						case 1:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							break;
						case 2:
							position.x = -3f;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 0;
							Instantiate(Wall, position, Wall.transform.rotation);
							position.x = 3.1f;
							break;
					}
					break;
				default:
					break;
			}
			position.y = Obstacles[RandomNum].transform.position.y;
			Instantiate(Obstacles[RandomNum], position, Obstacles[RandomNum].transform.rotation);
		}
	}
}
