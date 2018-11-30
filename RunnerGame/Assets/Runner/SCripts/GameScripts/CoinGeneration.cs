using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CoinGeneration : MonoBehaviour
{

	public GameObject Coin;
	public float Offset;
	public GameObject Player;
	private Vector3 position;
	private float xPos;
	private int RandX;
	private int CoinNum;
	private int totalCoins;
	private int RandTime;

	IEnumerator Start()
	{
		xPos = 0;
		while (true)
		{
			totalCoins = 0;
			position = Player.transform.position;
			position.z += Offset;
			position.y = -2.5f;
			xPos = Random.Range(-3, 3);
			CoinNum = Random.Range(3, 5);
			RandX = Random.Range(-1, 2);
			while (totalCoins <= CoinNum)
			{
				position.z += 4;
				xPos = RandX * 3;
				position.x = xPos;
				totalCoins++;
				Instantiate(Coin, position, Coin.transform.rotation);
				yield return new WaitForFixedUpdate();
			}

			RandTime = Random.Range(2, 8);
			yield return new WaitForSeconds(RandTime);
		}
	}
}
