using UnityEngine;

[CreateAssetMenu(fileName = "PrefabData", menuName = "Data/Prefab")]
public class PrefabData : ScriptableObject
{

    public GameObject Prefab;
    public Sprite SpriteImage;
    public Color SpriteColor;

    public void OnConfigure()
    {
        var newPrefab = Instantiate(Prefab);
        newPrefab.name = this.name;

        var newSprite = newPrefab.GetComponent<SpriteRenderer>();
        newSprite.sprite = SpriteImage;
        newSprite.color = SpriteColor;
    }

}
