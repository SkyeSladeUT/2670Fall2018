﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
[RequireComponent(typeof(NavMeshAgent))]
public class BasicUI : MonoBehaviour
{
	/*Possible asset after adding a follow player once the player gets close enough
	 And bugs are worked out*/
	public NavMeshAgent Agent;
	private Transform current;
	private int currentIndex;
	public Transform[] DestList;

	private void Start()
	{
		Agent = GetComponent<NavMeshAgent>();
		current = DestList[0];
		currentIndex = 0;

	}

	private void Update()
	{
		if(isActiveAndEnabled) 
			Agent.destination = current.position;
	}

	private void OnTriggerEnter(Collider other)
	{
		if (other.CompareTag("Point"))
		{
			if (currentIndex >= DestList.Length - 1)
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
