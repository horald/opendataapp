// aktuelle fullcalendar einstellungen
$(document).ready(function() {
		$('#calendar').fullCalendar({
			header: {
				left: 'prevYear,nextYear,prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
         firstDay:1, 			
         height: 638,
			
//			editable: true,
                        editable: false,

//			selectable: true,
                        selectable: false,
			
         select: function(start, end, allDay) {
              startyear=start.getFullYear();              
              startmon=start.getMonth()+1;
              if (startmon<10) {
              	 startmon='0'+startmon;
              }
              startday=start.getDate();
              if (startday<10) {
                startday='0'+startday;              
              }
              startdate=startyear+'-'+startmon+'-'+startday;
              alert(startdate);              
              //alert("insert.php?menu=termine&fldvondatum="+startdate);	
              document.location.href = "insert.php?menu=termine&fldvondatum="+startdate;	
			},
			
			
			events: "json-events.php",
			
//			eventColor: '#378006',
			
			eventDrop: function(event, delta) {
				alert(event.title + ' was moved ' + delta + ' days\n' +
					'(should probably update your database)');
			},
			
			loading: function(bool) {
				if (bool) $('#loading').show();
				else $('#loading').hide();
			}
			
		});
		
	
  $('#submitButton').on('click', function(e){
    // We don't want this to act as a link so cancel the link action
    e.preventDefault();

    doSubmit();
  });

  function doSubmit(){
    $("#createEventModal").modal('hide');
    console.log($('#apptStartTime').val());
    console.log($('#apptEndTime').val());
    console.log($('#apptAllDay').val());
    alert("form submitted");
        
    $("#calendar").fullCalendar('renderEvent',
        {
            title: $('#patientName').val(),
            start: new Date($('#apptStartTime').val()),
            end: new Date($('#apptEndTime').val()),
            allDay: ($('#apptAllDay').val() == "true"),
        },
        true);
   }
});	