   M S B A M L   `   `   `  ����E  ABuzzlyLabs, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:BuzzlyLabs
BuzzlyLabs  5   	       BuzzlyLabs.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   *localclr-namespace:BuzzlyLabs     5   	     � Title$  
MainWindow��5   	   $	��650��6   $	��800��6)    � 	Resources 5	         validationErrorTemplate �� Orientation �� TextAlignment � ToolTip �� ElementName �� Path ��Name��%�  &	        �� 5
   
   .R�5      ]� .+�5      �� $ 
Horizontal=�6   $	��Top=�66   .+�5      � $��12��6   $��12��6&   .+�5      A� $��12��6"   $��12��6-   
���  ��$��Center=�6D   $��Center=�6a   5   !   �� 5      
�������$��Heavy"�67   $��8(�6J   $��Center=�6W   $��Center=�6t   $ Center=�6�    5       �� $ ErrorAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�X5   $   5      �� 5      
���  ��$
��Bold"�61   $��2,0,0,0q�6C   ��5      �� $ ErrorAdorner��$8 2AdornedElement.(Validation.Errors)[0].ErrorContent�5      5      �� 5      $ ErrorAdorner��6,   6E   5      5      5      .��5      � .+�5   
   �� $��10q�6   .+�5      �� $)��#First Task - In-memory stack (LIFO)��6   $��24(�6C   �� 5       $&�� Please, enter value to the stack��6   �� 5!      -   5        $��addStackValues��5!       =� ErrorTemplate# [  6,   $��0, 10, 0, 0q�6p   .��6�   ��5"      �� 5#      $ StackValues�6   	 �� Mode$	 TwoWay=�61   
 �� UpdateSourceTrigger$
 PropertyChanged=�6?    �� ValidationRules 5$         BuzzlyLabs.Validator  5%      60   5'      .��5(       5)      �� 5*      -   5        $��Add To Stack��5*      $
��Left=�5+      $��	10,10,0,0q�5,      $	��Top=�5-      $��75��5.      5/      50      �� 52   
   $��10, 140, 10, 10q�6   .+�53      �� $��Value from stack��6   �� 54      -   5        $��returnedStackValue��54      $��0, 10, 0, 0q�60   �� 55      -   5        $��Get From Stack��55      $
��Left=�56      $��	10,10,0,0q�57      $	��Top=�58      $��85��59      5:      5;      �� 5=   
   $��10, 250, 10, 10q�6   .+�5>      �� $6��0Second Task - In-memory key-value store with TTL��6   $��24(�6P   �� 5?      $��Add key��6   �� 5@      -   5        $��addKey��5@      # [  6$   $��0, 10, 0, 0q�6h   .��6}   ��5A      �� 5B      $ KeyValue�6   $	 TwoWay=�6.   $
 	LostFocus=�6<    5C        5D      60   5F      .��5G       5H      �� 5I      $��	Add value��6   �� 5J      -   5        $��addValue��5J      # [  6&   $��0, 10, 0, 0q�6j   .��6   ��5K      �� 5L      $ Value�6   $	 TwoWay=�6+   $
 	LostFocus=�69    5M        5N      60   5P      .��5Q       5R      �� 5S      -   5        $��Add to store��5S      $
��Left=�5T      $��	10,20,0,0q�5U      $	��Top=�5V      $��75��5W      5X      5Y      �� 5[   
   $��10, 450, 10, 10q�6   .+�5\      �� $��Search by key��6   �� 5]      -   5        $��	searchKey��5]      # [  6'   $��0, 10, 0, 0q�6k   .��6�   ��5^      �� 5_      $ 	SearchKey�6   $	 TwoWay=�6/   $
 	LostFocus=�6=    5`        5a      60   5c      .��5d       5e      �� 5f      $��Returned value��6   �� 5g      -	   5        $��
storeValue��5g      �� 5h      -
   5        $��Get From Store��5h      $
��Left=�5i      $��	10,10,0,0q�5j      $	��Top=�5k      $��85��5l      5m      5n      5o      5p      