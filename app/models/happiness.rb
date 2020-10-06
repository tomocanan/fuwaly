class Happiness < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '低い' },
    { id: 3, name: '少し低い' },
    { id: 4, name: '普通' },
    { id: 5, name: '少し高い' },
    { id: 6, name: '高い' },
  ]
 end