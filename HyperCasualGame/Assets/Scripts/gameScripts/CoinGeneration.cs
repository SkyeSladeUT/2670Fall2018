using System.Collections;
using System.Collections.Generic;
using System.Runtime.InteropServices;
using UnityEngine;

public class CoinGeneration : MonoBehaviour
{
	public GameObject Coin;
	public GameObject BoostPowerUp;
	public GameObject Player;
	public FloatData Offset;
	public Player player;
	private Vector3 position;
	private int randomNum;
	private float randomY;

	IEnumerator Start()
	{
		while (true)
		{
			yield return new WaitForSeconds(1f);
			position = Player.transform.position;
			position.x += Offset.Value + 20;
			randomY = Random.Range(-4.5f, 4.5f);
			position.y = randomY;
			randomNum = Random.Range(0, 99);
			if (!player.isBoost)
			{
				if (randomNum <= 5)
				{
					Instantiate(BoostPowerUp, position, BoostPowerUp.transform.rotation);
				}
				else
				{
					Instantiate(Coin, position, Coin.transform.rotation);
				}
			}
			else
			{
				Instantiate(Coin, position, Coin.transform.rotation);
			}
		}
	}
}
