   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.Pages.ClientsPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5      -   5          N? Title$  ClientsPage??5	       N? WindowHeight$ 1Q?6   .??5      ?  ? RowDefinitions 5   
   ?? 5      ?? 5      $??50 ?6   ?? 5      $??50 ?6   .+?5   
   ?? $??2??6    ?? Orientation$ 
Horizontal=?6#   .+?5      ?? -   5        $??BtnFirstPage??5   ,   $??3q?6   $??20??6    $??<<??6[   ???	#FF498C516n   ?? 5      -   5        $??BtnPreviousPage??5   +   $??3q?6   $??20??6    $??<??6`   ???	#FF498C516o   ?? 5      -   5        $??LblPages??5      $??Center=?6$   $??16(?6?   $??16,10q?6M   .??6\   4/56a   ?? 5      -   5        $??BtnNextPage??5   +   $??3q?6   $??20??6    $??>??6X   ???	#FF498C516g   ?? 5      -   5        $??BtnLastPage??5   +   $??3q?6   $??20??6    $??>>??6X   ???	#FF498C516k   ?? 5      -   5         ??Name$ button??5      $-??'Распечатать страницу??6%   $??Center=?6E   $??Center=?6c   $	??150??6~   $??Comic Sans MS)?6?   ???	#FF498C516?   ?? 5      -   5        $	??171??5   *   $??2??66   $0??*Сформировать Штрих-Код??6J   $??Comic Sans MS)?6k   ???	#FF498C516?   ?? 5      -	   5        $??Right=?5   -   $??Создать отчёт??6I   ???	#FF498C516z   ?? 5      -
   5        $	??150??5   1   $??2??6=   $??История входа??6Q   $??Comic Sans MS)?6i   ???	#FF498C516?   ?? 5      -   5        $??
Назад??5   3   ???	#FF498C51$	??125??6Z   5      &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ DGridHotels??5          AutoGenerateColumns .     
IsReadOnly . 
???????   Columns 5"      0  *System.Windows.Controls.DataGridTextColumn  5$      ,  &System.Windows.Controls.DataGridColumn	   Header$		 FML??6%   
   Width5  /System.Windows.Controls.DataGridLengthConverter$	
 300 6J   1  +System.Windows.Controls.DataGridBoundColumn   Binding 62   ?? *fio+6J     5&      $	 Email??6%   $	
 150 6N    64   ?? *Email+6N     5(      $	 Address??6%   $	
 250 6Q    66   ?? *Adress+6Q     5)      $	 PassCode??6%   $	
 100 6T    67   ?? *
PassCode+6T     5*      $	 
PassNumber??6%   $	
 100 6X    69   ?? *
PassNumber+6X   4  .System.Windows.Controls.DataGridTemplateColumn  5,      $
 * 6*      CellTemplate 5.      ?? 5/      .R?50      ?? $??BtnEdit??6%   -   5        $
??Edit??50   4   $
??10 5q?6C   $
??10 5q?6R   ???	#FE498C516w   51      53      55      ? 56   
   $??1??6    ? ColumnDefinitions 57      ?? 58      ?? 59      ?? 5:      ?? 5;      ?? 5<      .+?5A      ?? -   5        $??BtnAdd??5A      $%??Добавить клиента??6#   $??0??6>   $??30??6N   $??16(?6q   $??Comic Sans MS)?6   ???	#FF060606???	#FF498C516?   ?? 5B      -   5        $??BtnDel??5B      $#??Удалить клиента??6#   $??1??6=   $??1??6J   $??Comic Sans MS)?6Z   $??30??6v   
???   ?$??16(?6?   ???	#FF498C516?   ?? 5C      -   5        $#??Список клиентов??5C      $??2??60   $??Comic Sans MS)?6B   $??16(?6u   ???	#FF498C516?   ?? 5D      -   5        $??BtnSave??5D      $#??Создать таблицу??6%   $??3??6?   ???	#FF498C51$??Comic Sans MS)?6}   $??16(?6?   ?? 5E      -   5        $??	FormOrder??5E      $??Создать заказ??6&   ???	#FF498C51$??4??6U   $??16(?6}   $??Comic Sans MS)?6?   6?   5J      ?? 5K   
   -   5         ??Name$ SPanelPages??5K      $ 
Horizontal=?6+   $??4??6D   $??Center=?6Q   6p   5N      5O      