# README

weekly meals subscription

* 实体: Meal, Cutoff, Subscription, Order, Group

* OrdersCreateWeeklyJob, 每小时执行一次，如果超过cutoff时间且还没创建该周订单，则创建所有有效的Subscription的订单；系统下线错过截止日期也不会受到影响

* Group, OrdersCreateWeeklyJob生成该周订单时，同时也会创建该周对应的Group

* Meal.popular_meals, 可以推荐出最流行的10个餐食品种给新客户，可以缓存该数据
