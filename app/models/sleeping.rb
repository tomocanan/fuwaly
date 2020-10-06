class Sleeping < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '全く眠れなかった' },
    { id: 3, name: 'あまり眠れなかった' },
    { id: 4, name: '普通' },
    { id: 5, name: 'よく眠れた' },
    { id: 6, name: 'ぐっすり眠れた' },
  ]
 end