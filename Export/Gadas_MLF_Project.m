


clear
close all

fontS = 15;
lineW = 1.5;

export = 1;

M1 = readmatrix('export_3.csv');

Epoch = M1(:,1);
Train_Loss = M1(:,2);
Train_Accuracy = M1(:,3);
Validation_Loss = M1(:,4);
Validation_Accuracy = M1(:,5);


f1 = figure();
f1.Position = [100 100 660 420];
plot(Epoch,Train_Accuracy*100,'r','LineWidth',lineW)
hold on
plot(Epoch,Validation_Accuracy*100,'b','LineWidth',lineW)
grid on
grid minor
legend('Train Loss','Validation Loss','FontSize',fontS-2, ...
    'interpreter','latex','Location','northeast')
xlabel('Epoch [-]','FontSize',fontS,'Interpreter','latex')
ylabel('Loss [\%]','FontSize',fontS,'Interpreter','latex')
title('Loss per epoch','FontSize',fontS,'Interpreter','latex')
ylim([0 100])
if export == 1
    exportgraphics(gcf,'Loss.emf','ContentType','vector')
end



f2 = figure();
f2.Position = [100+660 100 660 420];
plot(Epoch,Train_Loss*100,'r','LineWidth',lineW)
hold on
plot(Epoch,Validation_Loss*100,'b','LineWidth',lineW)
grid on
grid minor
legend('Train Accuracy','Validation Accuracy','FontSize',fontS-2, ...
    'interpreter','latex','Location','southeast')
xlabel('Epoch [-]','FontSize',fontS,'Interpreter','latex')
ylabel('Accuracy [\%]','FontSize',fontS,'Interpreter','latex')
title('Accuracy per epoch','FontSize',fontS,'Interpreter','latex')
ylim([0 100])
if export == 1
    exportgraphics(gcf,'Accuracy.emf','ContentType','vector')
end


