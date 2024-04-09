
osc(10,0,1)
  .kaleid()
  .mask(shape(4,0.3,1))
  .modulateRotate(shape(4,0.1,1))
  .modulateRotate(shape(4,0.1,0.9))
  .modulateRotate(shape(4,0.1,0.8))
  .scale(0.5)
  .add(shape(8,0.2,1).color(0.3,1,2,0.5))
  .rotate(()=>time)
  .out()

