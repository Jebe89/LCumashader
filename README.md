# LCumashader
Mainly the shader used in Umamusume game, but improved a bit for wider usage in VRchat.

Need to notice that your uma model is better not extracted by AssetStudio since it will lose all Vertex color and additional UVMap, which is used for outline correction and eye highlight rotation.

Also you may encounter face normal problem. Whether its blendshape normal or just rest mesh normal, you should always choose the import normal option if possible. If that still dont solve the blendshape normal, you can go to the fbx importer tab in unity and set blendshape normal to none(Suppose your rest mesh normal is ok). Otherwise, you can try reconstruct normal yourself, or try the shader option like Normal Remap(Based on mesh object space so may blow up with skeleton animation) and Only painted shadow.

For more info about how original game file work, you could go check the following repository:

https://github.com/katboi01/UmaViewer

https://github.com/CherishingWish/UmaModStudio
