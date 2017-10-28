# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


video = '<iframe width="560" height="315" src="https://www.youtube.com/embed/TcWPiHjIExA" frameborder="0" gesture="media" allowfullscreen></iframe>'

code = '
Here is some Apex code

```java
Map<Integer, String> m1 = new Map<Integer, String>();
m1.put(1, \'First item\');
m1.put(2, \'Second item\');
Map<Integer, String> m2 = new Map<Integer, String>(m1);
// The map elements of m2 are copied from m1
System.debug(m2);
```
And the obligatory kitten picture


![alt text](http://r.ddmcdn.com/w_606/s_f/o_1/cx_0/cy_15/cw_606/ch_404/APL/uploads/2014/06/10-kitten-cuteness-1.jpg "Logo Title Text 1")
'


250.times do |i|
  Post.create!(
    title: Faker::Food.dish,
    description: Faker::MostInterestingManInTheWorld.quote,
    element: video,
    body: code,
    view_tag: true,
    model_tag: true,
    controller_tag: true)
end
