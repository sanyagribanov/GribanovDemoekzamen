   M S B A M L   `   `   `  ????B  >WpfApp1, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp1WpfApp1  5          WpfApp1.Pages.CodePage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      'localclr-namespace:WpfApp1     5        N? Title$  CodePage??5	      .??5      ?  ? RowDefinitions 5   
   ?? 5      $??50 ?6   ?? 5      .+?5   
   ? $??0??6    ? ColumnDefinitions 5      ?? 5      $??50 ?6#   ?? 5      $??* ?6#   .+?5      ?? $??1??6    ?? Orientation$ 
Horizontal=?6)   .+?5      ?? $??/Pages/Resources/logo.png??6   $??8,0,16,0q?6;   ?? 5      $D??>Точка проката ЦПКиО им. С.М. Кирова??6   $??24(?6G   $??Center=?6U   $??Italic$?6p   5      5      ?? 5   
   $??1??6   
???????$??Center=?65   $??Center=?6R   .+?5      ?? $	??250??6   $	??350??6"   
???   ?$??1q?6B   ._?5      ?? -   5         ??Name$ 
barcodeCan??5      $	??250??60   $	??347??6=    ?? 
Background
 ????? ?? EditingMode$ GestureOnly=?6\   {?.  6w   5       ?? 5#      -   5         ??Name$ CodeTB??5#      $??Center=?6&   $	??200??6Y   $??30??6e   $
??0,16q?6q    ?? 	IsEnabled . 	 ?? 	MaxLength$	 13??6?   ??6C   ?? *code+6?   ?? 5$      $L??F 0000 год 00 месяц 00 день 00000 + номер заказа??6   $??Center=?6N   $??25??6k   ?? 5%      $ 
Horizontal=?6   .+?5&      ?? -   5        
 ??Name$
 PrintBtn??5&      $??Печать??6+   $??30??6<   ???	#FF498C516_   ?? 5'      -   5        $
 SaveBtn??5'      $??Сохранить??6*   $??30??6>   ???	#FF498C516`   5(      5*      5+      5,      