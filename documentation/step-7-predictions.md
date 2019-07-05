# Prediction

To use the trained and deployed model please open AI Platform and navigate to your model. 

It should look similar like this: 

![ai platform models](https://github.com/SaschaHeyer/Named-Entity-Recognition/blob/master/documentation/files/models.png?raw=true)

Open the model and choose your version then click on the Tab `TEST & USE` and enter the following input data:

```
{"instances":  ["London on Monday evening"]}
```
![ai platform predict](https://github.com/SaschaHeyer/Named-Entity-Recognition/blob/master/documentation/files/predict.png?raw=true)

After a couple of seconds you get the prediction response

```json
{
  "predictions": [
    [
      "B-geo",
      "O",
      "B-tim",
      "I-tim",
       ]
  ]
}
```
