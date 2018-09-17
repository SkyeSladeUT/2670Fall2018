using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class BasicUI : MonoBehaviour
{

	public NavMeshAgent Agent;
	private Transform current;
	private int currentIndex;
	public Transform[] DestList;
	public Transform Player;

	private void Start()
	{
		Agent = GetComponent<NavMeshAgent>();
		current = DestList[0];
		currentIndex = 0;

	}

	private void Update()
	{
		Agent.destination = current.position;
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			Agent.destination = Player.position;
		}
		
		else if (currentIndex == DestList.Length - 1)
		{
			currentIndex = 0;
			current = DestList[currentIndex];
		}
		else
		{
			currentIndex++;
			current = DestList[currentIndex];
		}
	}

	private void OnTriggerExit(Collider other)
	{
		if (other.CompareTag("Player"))
		{
			if (currentIndex == DestList.Length - 1)
			{
				currentIndex = 0;
				current = DestList[currentIndex];
			}
			else
			{
				currentIndex++;
				current = DestList[currentIndex];
			}
		}
	}
}
