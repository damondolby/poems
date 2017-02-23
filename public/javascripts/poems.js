/**
 * @author root
 */
     $(document).ready(function()
     {		
		/*The toggle box for the list of poems in the group*/	
		$("#PoemGroup #Heading").click(function(){
			$("#PoemGroup #Poems").toggle("slow");}); 
			
		/*$('#PoemGroup #Heading').hover(
			function() { $("#PoemGroup #Poems").toggle("slow"); },
			function() { $('#Poems', this).css('display', 'none'); });*/
			
		/*Something to get the Poems drop down to work in IE????*/
		$('li.level1').hover(
			function() { $('ul', this).css('display', 'block'); },
			function() { $('ul', this).css('display', 'none'); });

	});