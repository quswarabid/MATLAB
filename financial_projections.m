total_quantity_lot = 5000;
cost_per_lot = 44763.4;
cost_per_unit = cost_per_lot / total_quantity_lot;
price_per_unit = 20;
price_per_lot = price_per_unit*total_quantity_lot;
profit_per_unit = price_per_unit - cost_per_unit;

xyz = [3600,4680,6084,7409,10280,13360,17376,22590];

plot(scale, cost_per_unit*xyz, 'r');
hold on;
plot(scale, price_per_unit*xyz, 'g');
hold on;
plot(scale, profit_per_unit*xyz,'b');
hold on;
legend('Yearly Cost', 'Yearly Sale', 'Yearly Profit');
grid on;
