class City < ActiveHash::Base
  self.data = [
    { id: 1, name: '- -'},
    { id: 2, name: '名古屋市' },
   { id: 3, name: '東海市' },
   { id: 4, name: '大府市' },
   { id: 5, name: '知多市' },
   { id: 6, name: '東浦町' },
   { id: 7, name: '阿久比町' },
   { id: 8, name: '常滑市' },
   { id: 9, name: '半田市' },
   { id: 10, name: '武豊町' },
   { id: 11, name: '美浜町' },
   { id: 12, name: '南知多町' }
  ]

  include ActiveHash::Associations
  has_many :teams
end
