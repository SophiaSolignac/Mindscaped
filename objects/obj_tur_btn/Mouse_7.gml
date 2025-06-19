// Calcule la distance entre le bouton et le curseur
 {
    // Le curseur est assez proche ET le bouton a été cliqué
    var book = instance_find(obj_book,0);
	if (turning_page_direction > 0) book.Turn_Page_Right();
	else book.Turn_Page_Left();
    
}