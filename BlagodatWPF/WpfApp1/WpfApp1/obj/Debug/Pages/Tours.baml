   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null-clr-namespace:WpfApp1.PagesWpfApp1.Pages  5          WpfApp1.Pages.Tours   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -localclr-namespace:WpfApp1.Pages     5        N? Title$  Tours??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $
??auto ?6   6,   ?? 5      $??* ?6   6)   .+?5   
   ?  ? Orientation$ 
Horizontal=?6   $??Center=?6-   .+?5      ??  ?? Orientation$ 
Horizontal=?6   .+?5      ?? $9??3Введите значение для поиска??6   $	??175??6?    ?? TextAlignment$ Right=?6K   6c   ?? 5      -   5        $??
TBoxSearch??5   &   $	??225??6   6_   5      ?? 5      $ 
Horizontal=?6   .+?5      ?? $"??Выберите по ФИО??6   $	??175??63   $ Right=?6?   6W   ?? 5      -   5        $??ComboFIO??5   '   $	??225??6    ?? DisplayMemberPath$	 fio??6d   6~   5      ?? 5      -   5         ??Name$ CheckBolshe??5      $<??6Показать коды меньше 4000 тысяч??6l   $??Center=?6?   6?   5      ?? 5   
   -   5        $??
LViewTours??5       $??1??6   $??Disabled=?63   $??Center=?6i   ??5      ?? 5       .R?5!      ? $ 
Horizontal=?6    $??Center=?69   6V   5"      ??5$      ?? 5%      .R?5&      ? $??20q?6   $	??400??6'    5'      ?? 5(      $??70 ?6,   6:   ?? 5)      $	??310 ?6,   6;   ?? 5*      $
??auto ?6,   6<   ?? 5+      $
??auto ?6,   6<   .+?5-      ?? $	??400??6    $??1??6,   $??UniformToFill=?69   $??Center=?6Q   $??5q?6n   ??5.      ??50   *   \Pages\Resources\logo.png??6Q   53      ?? 54      $??Center=?69   $ Center=?6T   $	??450??6k   $
??Wrap=?55   $   $??Center=?68   $??26(?6U   $??0??6c   ??54   $   ?? *fio+55   r   ?? 56      $??2??6;   $??Center=?6I   $??20(?6f   $
??Bold"?6t   ??6$   ?? *Email+6?   ?? 57      $??3??6<   $??14(?6I   $??Right=?6W   ??6$   ?? *Adress+6u   ?? 58      $??3??6>   $??14(?6K   $
??Left=?6Y   ??6$   ?? *
PassCode+6v   5;      5<      5>      5B      5C      