class Feeling < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '悪い' },
    { id: 2, name: '少し悪い' },
    { id: 3, name: '普通' },
    { id: 4, name: 'まあま良い' },
    { id: 5, name: '良い' },
  ]
 end
