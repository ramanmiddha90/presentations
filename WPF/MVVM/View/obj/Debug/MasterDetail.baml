   M S B A M L   `   `   `  ����B  >WpfDemo, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:WpfDemo.ConvertersWpfDemo.Converters  5      @ <Model, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null>+clr-namespace:Model.Commands;assembly=ModelModel.Commands 5          WpfDemo.MasterDetail   5   	   \ XPresentationFramework, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=3.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      8x,http://schemas.microsoft.com/winfx/2006/xaml    5      5
Converters clr-namespace:WpfDemo.Converters    5      >Commands+clr-namespace:Model.Commands;assembly=Model    5        � Title$  MasterDetail��5      $	��479��6   $	��579��6'    � 	Resources 5      4   .WpfDemo.Converters.ProductListDisplayConverter   ProductListDisplayConverter3   -WpfDemo.Converters.PriceToBackgroundConverter  PriceBackgroundConverter,   &WpfDemo.Converters.StockValueConverter  StockConverter��%W   &	        &	      &	 &       5   
   61     5	   
   60     5
   
   6)   5      .��5      � -   5        $��MainGrid��5       � IsSharedSizeScope .  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $
��Auto �6    z� SharedSizeGroup$ Label��6,   �� 5      $��* �6   .+�5   
   o� $��0��6   $��0��6   $��2��6,   .@�5      m� $��_File��6   .@�5      m� $��_Close��6    m� Command 6+   ��  �� Path$ CloseCmd.Command� m� CommandParameter 5      �� 	 �� ElementName$	 cboProducts��$ SelectedItem�)  #Model.Commands.CreateCommandBinding
   Command
 5      �� *
CloseCmd+5      m� 5      $��_Edit��6   .@�5      m� $��_Save��6    6*   �� $ SaveCmd.Command� 5      �� $	 cboProducts��$ SelectedItem�
 5      �� *	SaveCmd+m� 5       $��Ca_ncel��6    6,   �� $ CancelCmd.Command� 5!      �� $	 cboProducts��$ SelectedItem�
 5"      �� *	CancelCmd+m� 5#      $
��_New��6    6)   �� $ NewCmd.Command� 5$      �� $	 cboProducts��$ SelectedItem�
 5%      �� *NewCmd+m� 5&      $��_Delete��6    6,   �� $ DeleteCmd.Command� 5'      �� $	 cboProducts��$ SelectedItem�
 5(      �� *	DeleteCmd+5)      m� 5*      $��_Help��6   .@�5+      m� $��_About��6   5,      5-      �� 5.   
   $��0��6   $��1��6    $��3q�6-   .��68   	Category:6C   �� 5/   
   -   5        $��cboCategories��5/      $��1��6(   $��1��68   $��3q�6E    �� DisplayMemberPath$ CategoryName��6P   ��50      �� $ 
Categories�� 51   
   $��2��6   $��2��6   $
��Auto��60   $��Stretch=�6>    52      �� 53      $
��Auto �6#   $ Label��60   $	��100��6H   �� 54      $��* �6#    56      �� 57      $
��Auto �6    60   �� 58      $��* �6    6-   .+�5:      �� $��0��6   $��0��6$   $��3q�62   $��Stretch=�6=   .��6[   
Product:6e   �� 5;      -   5        $��cboProducts��5;      $��Stretch=�6*   $��1��6H   $��0��5<      $��	3,3,120,3q�6$   ��5=      �� $	 cboCategories��$ SelectedItem.ProductList� �� SelectedItem 5>      �� $ CurrentProduct� �� UpdateSourceTrigger$ PropertyChanged=���5?      �� 5@      .R�5A      ��  �� Orientation$ 
Horizontal=�6%   $
��Left=�6?   $��LeftToRight=�6Z   .+�5B      �� 
������ ��5C   &   `� 5D   *    `� 	Converter# [  67   .1�5E   .   �� $ 	ModelName�66   �� 5F   .   $ ModelNumber�66   5G   +   5I      5J      5K      5M      � 5N      -   5        $��ProductGrid��5N   4   $��1��6   $��2��6    $
��Auto��6G   $��Stretch=�6U    � DataContext 5O      �� $ CurrentProduct� 5Q      �� 5R      $
��Auto �6'   $ Label��64   �� 5S      $��* �6'    5U      �� 5V      $
��Auto �6$   64   �� 5W      $
��Auto �6$   64   �� 5X      $
��Auto �6$   64   �� 5Y      $
��Auto �6$   64   �� 5Z      $
��Auto �6$   64   �� 5[      $��* �6$   61   �� 5\      $
��Auto �6$   64   .+�5^      �� $��3q�6   $��0��6#   $��0��63   .��6@   Model Number:6O   �� 5_      $��3q�6   $��1��6%   $��0��65   .��6B   ��5`      �� 5a      $ ModelNumber�6"   $ PropertyChanged=�65    �� ValidationRules 5b      5  /System.Windows.Controls.ExceptionValidationRule  5c   "   5e      .��5f   $   5g      �� 5h      $��3q�6   $��0��6$   $��1��64   .��6A   Model Name:6N   �� 5i      $��3q�6   $��1��6&   $��1��66   .��6C   ��5j      �� 5k      $ 	ModelName�6"   $ PropertyChanged=�63    �� ValidatesOnDataErrors . 5l      .��5m   $   5n      �� 5o      $��3q�6   $��0��6$   $��2��64   .��6A   
Unit Cost:6M   � 5p      $��1��6   $��2��6'    5q      �� 5r      $
��Auto �6+   �� 5s      $
��Auto �6+   �� 5t      $
��Auto �6+   �� 5u      $
��Auto �6+   �� 5v      $
��Auto �6+   .+�5x      �� $��3q�6   $��0��6)   $��0��66   $	��100��6F   ��5y      �� $ UnitCost� �� 	Converter# [ .��6o   ��5z      �� 5{      $ UnitCost�6&   $ PropertyChanged=�66    .  �� NotifyOnValidationError .  5|   "   *   $WpfDemo.Converters.CurrencyConverter  5}   &    5   "   4   .WpfDemo.Converters.PositivePriceValidationRule  5�   &      MaxPrice$ 999.99~�6M   5�      .��5�   (   5�      �� 5�      $��3,3,3,0q�6   $��1��6-   .��6=   
Inventory:6I   �� 5�      $��3q�6   $��0��6)   $��2��66   $	��100��6F   .��6R   ��5�      �� 5�      $ UnitsInStock�6&   $ PropertyChanged=�6:    . 6`   .��5�   (   5�      �� 5�      $��3,3,3,0q�6   $��3��6-   .��6=   Stock Value:6K   �� 5�      $��3,3,3,0q�6   $��0��6/   $��4��6<   $��75��6L    �� 
IsReadOnly . .��6i   ��5�      `� 5�      # [ 6+   .1�5�   "   �� $ UnitCost�6*   �� 5�   "   $ UnitsInStock�6*   5�      .��5�   (   5�      5�      �� 5�      $��3,3,3,0q�6   $��4��6)   .��66   Description:6D   �� 5�      $��7q�6   $��5��6%   $��0��62   $��2��6B    �� TextWrapping$
 Wrap=�6V   $��Stretch=�6j   ��5�      �� $ Description�$ PropertyChanged=�6^   � 5�      $��0��6   $��6��6'   $��2��64   .+�5�      �� $��0��6�   $��0��6�   $��Stretch=�6�   $��RightToLeft=�6�   $ 
Horizontal=�6�   $
��Auto��6   6!   �� $ DataContext� �� RelativeSource �� *FindAncestor+ �� AncestorType" �.+�5�      �� -   5        $��	cmdCancel��5�   !   $��Ca_ncel��62   $��3,3,3,3q�6D   $��3q�6V   ��5�      �� $ CancelCmd.Command���5�      �� $	 cboProducts��$ SelectedItem�
 5�      �� *	CancelCmd+�� 5�      -   5        $��cmdSave��5�   !   $��_Save��60   $��3,3,3,3q�6@   $��3q�6R   ��5�      �� $ SaveCmd.Command���5�      �� $	 cboProducts��$ SelectedItem�
 5�      �� *	SaveCmd+�� 5�      -   5        $��cmdClose��5�   !   $��_Close��61   $��3,3,3,3q�6B   $��3q�6S   ��5�      �� $ CloseCmd.Command���5�      �� $	 cboProducts��$ SelectedItem�
 5�      �� *
CloseCmd+5�      5�      5�      5�      5�      5�      