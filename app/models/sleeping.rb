class Sleeping < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '全く眠れなかった' },
    { id: 2, name: 'あまり眠れなかった' },
    { id: 3, name: '普通' },
    { id: 4, name: 'よく眠れた' },
    { id: 5, name: 'ぐっすり眠れた' },
  ]
 end