price_point = 00;
price_lower = 16;
price_upper = 22;
for i=price_lower:price_upper
    price_point = i;
    scale = [10,100,500,1000,2000,3000,5000];
    grand_total = [137.0468,1150.88,5427.74,9320.68,18235.76,27341.64,44763.4];
    grand_product = grand_total./scale;
    grand_profit = (price_point*scale)-(grand_total);
    plot(scale,grand_total,'r');
    hold on;
    plot(scale, grand_product,'g');
    hold on;
    plot(scale, grand_profit,'b');
    hold on;
    legend('Cost (Bulk)', 'Cost / Unit' ,'Profit (bulk)');
    grid on;
end