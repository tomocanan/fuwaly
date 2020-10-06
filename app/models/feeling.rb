class Feeling < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '悪い' },
    { id: 3, name: '少し悪い' },
    { id: 4, name: '普通' },
    { id: 5, name: 'まあま良い' },
    { id: 6, name: '良い' },
  ]
 end
