   M S B A M L   `   `   `  ����L  HSzyfr_DES_ECB_CBC, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:Szyfr_DES_ECB_CBCSzyfr_DES_ECB_CBC  5   	   "    Szyfr_DES_ECB_CBC.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:Szyfr_DES_ECB_CBC     5   	     � Title$+  %Szyfr DES (tryby symetryczne ECB CBC)��5   	   $	��500��67   $	��550��6D   
������ � 
ResizeMode$ NoResize=�6k    � WindowStartupLocation$ CenterScreen=�6�   .��5	      � .+�5
   
   �� -   5         ��Name$ TxtBoxNieszyf��5
      $
��Left=�6)   $��	15,41,0,0q�6D    �� TextWrapping$
 Wrap=�6W   $	��Top=�6k   $	��150��6�   $	��200��6�   �� 5   
   -   5        $ TxtBoxRoszyf��5      $
��Left=�6(   $��320,292,0,0q�6C   $
 Wrap=�6X   $	��Top=�6l   $	��150��6�   $	��200��6�    �� 
IsReadOnly . 6�   �� 5   
   -   5        $ 
TxtBoxSzyf��5      $
��Left=�6&   $��
320,41,0,0q�6A   $
 Wrap=�6U   $	��Top=�6i   $	��150��6�   $	��200��6�    . 6�   �� 5   
   -   5        $ TxtBoxZaszyf��5      $
��Left=�6(   $��
15,292,0,0q�6C   $
 Wrap=�6W   $	��Top=�6k   $	��150��6�   $	��200��6�   �� 5   
   -   5        $ TxtBoxKlucz��5      $
��Left=�6'   $��196,198,0,0q�6B   $
 Wrap=�6W   $�� ��6k   $	��Top=�6s   $	��140��6�   $��18(�6�    �� 	MaxLength$ 8��6�   6�   �� 5   
   -   5         ��Name$ ButtSzyfruj��5      $��Szyfruj��6&   $
��Left=�68   $��
232,94,0,0q�6S   $	��Top=�6g   $��44��6�   $��70��6�   $��	ExtraBold"�6�   $��15(�6�   
���/���6�   �� 5   
   -   5        $ 
ButtDeszyf��5      $��	Deszyfruj��6%   $
��Left=�69   $��227,344,0,0q�6T   $	��Top=�6i   $��46��6�   $��80��6�   $��	ExtraBold"�6�   $��15(�6�   
����iA�6�   �� 5   
   -   5        $ 
ButtKopiuj��5      $��Kopiuj��6%   $
��Left=�66   $��227,292,0,0q�6Q   $	��Top=�6f   $��46��6~   $��80��6�   $��	ExtraBold"�6�   $��15(�6�   
��� ���6�   �� 5   
   -	   5        $ ButtCzytajCzysty��5      $��Wczytaj czysty tekst��6+   $
��Left=�6J   $��
40,215,0,0q�6e   $	��Top=�6y   $	��150��6�   $
��Bold"�6�   $��11(�6�   
�������6�   �� 5   
   -
   5        $ ButtCzytajZaszyfrowany��5      $ ��Wczytaj zaszyfrowany tekst��61   $
��Left=�6V   $��
40,239,0,0q�6q   $	��Top=�6�   $	��150��6�   $
��Bold"�6�   $��11(�6�   
�������6�   �� 5   
   -   5        $ ButtZapiszSzyfr��5      $��Zapisz zaszyfrowany tekst��6*   $
��Left=�6N   $��345,215,0,0q�6i   $	��Top=�6~   $	��150��6�   $
��Bold"�6�   $��11(�6�   
�������6�   �� 5   
   -   5         ��Name$ LabKlucz��5      $��Klucz��6"   $
��Left=�62   $��242,162,0,0q�6M   $	��Top=�6b   $��	ExtraBold"�6z   $��15(�6�   �� 5   
   -   5        $ 
LabNieszyf��5      $��Tekst nieszyfrowany��6$   $
��Left=�6B   $��	39,10,0,0q�6]   $	��Top=�6p   $��	ExtraBold"�6�   $��15(�6�   �� 5   
   -   5        $ LabSzyf��5      $��Tekst zaszyfrowany��6!   $
��Left=�6>   $��
342,10,0,0q�6Y   $	��Top=�6m   $��	ExtraBold"�6�   $��15(�6�   �� 5   
   -   5        $ 	LabZaszyf��5      $��Tekst zaszyfrowany��6#   $
��Left=�6@   $��
42,261,0,0q�6[   $	��Top=�6o   $��	ExtraBold"�6�   $��15(�6�   �� 5   
   -   5        $ 	LabRozszf��5      $��Tekst rozszyfrowany��6#   $
��Left=�6A   $��338,261,0,0q�6\   $	��Top=�6q   $��	ExtraBold"�6�   $��15(�6�   �� 5   
   -   5        $ LabTryb��5      $
��Tryb��6!   $
��Left=�60   $��
245,15,0,0q�6K   $	��Top=�6_   $��	ExtraBold"�6w   $��15(�6�   �� 5   
   -   5        	 ��Name$	 ComboBoxTryb��5      $
��Left=�6)   $	��Top=�6D   $��
243,45,0,0q�6\   .@�5      �� 
 �� 
IsSelected
 . .��6-   ECB62   �� 5       .��6   CBC6    5!      5"      5#      