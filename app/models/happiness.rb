class Happiness < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '低い' },
    { id: 2, name: '少し低い' },
    { id: 3, name: '普通' },
    { id: 4, name: '少し高い' },
    { id: 5, name: '高い' },
  ]
 end