using UnityEngine;
using UnityEngine.AI;
[RequireComponent(typeof(NavMeshAgent))]
public class AIAgent : MonoBehaviour
{

	private NavMeshAgent agent;
	public Transform Player;
	public Transform Postpoint;
	private Transform finalDestination;
	
	private void Start()
	{
		agent = GetComponent<NavMeshAgent>();
		finalDestination = transform;
	}

	private void Update()
	{
		agent.destination = finalDestination.position;
	}

	private void OnTriggerEnter(Collider obj)
	{
		if (obj.transform == Player)
		{
			finalDestination = Player;
		}
	}

	private void OnTriggerExit(Collider obj)
	{
		finalDestination = Postpoint;
	}
}
