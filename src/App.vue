<script setup>
import liberty from "@/assets/images/portfolio/liberty.jpg"

var menu = {
	active: false
}

const navigations = [
  { title: "Home" },
  { title: "About" },
  { title: "Resume" },
  { title: "Portfolio" },
  { title: "Services" },
  { title: "Contact" },
]

// Should be divisible by 5.
const skills = [
	{ name: 'Figma', percent: 90 },
	{ name: 'Axure', percent: 85 },
	{ name: 'Adobe XD', percent: 70 },
	{ name: 'Adobe Photoshop', percent: 95 },
	{ name: 'Adobe Illustrator', percent: 80 },
]

const workExperiences = [
	{
		company: 'Centralized Cloud Computing International',
		from: 'February 2017', to: 'Present',
		positions: [
			{
				name: 'UI/UX Designer', from: '2017', to: 'Present', 
				description: 'Collaborates with the application developers to ensure that the product has an intuitive design and feel and user-friendly software by developing wireframes and lo-fi and hi-fi prototypes. Develops website, web and chatbot applications in support of the company\'s development team. Responsible for the overall design of the IT Group materials for proposal, presentation and collaterals.'
			},
			{
				name: 'Project Manager', from: '2021', to: 'Present', 
				description: 'Oversees various business initiatives or projects, monitors progress and completion of the project, and ensures that we meet the clients\' expectations and keeping them informed throughout the project lifecycle. Collaborates with teammates to ensure that all project requirements, deadlines, and timelines are met.'
			},
			{
				name: 'Quality Assurance Tester', from: '2020', to: 'Present', 
				description: 'Collaborates with the development team to provide high-quality software. Creates test plans, scenarios, scripts, and procedures. Analyze test results and log reports to the development team.'
			},
		],
	},
	{
		company: 'FDA Philippines ODG',
		from: '2018', to: '2019',
		positions: [
			{ 
				name: 'Consultant for Branding',
				description: 'Reports directly to the Office of the Director General. Provide evaluation reports with recommendations on FDA\'s branding policy. Deliver creative and innovative ideas for print, electronic, web-based, and animated presentations and submit delivery reports. Design reports, project briefers, and other communication materials and provide guidelines on the design and submit reports on all the designs made. Improve and edit powerPoint and keynote presentations, photos, charts, and other graphic elements. Layout and design information (banners, posters, booklets, leaflets, books, calendars, bulletins, flyers, cards), and assist in the printing of the communication materials.'
			}
		]
	},
	{
		company: 'Lucky Titanium - City of Dreams Manila',
		from: '2016', to: '2017',
		positions: [
			{ name: 'Marketing Account Manager - VIP', description: 'Welcomes incoming and departing guests and present them the company profile and capabilities. Inform guest of current promotions and services Manage and answer guest queries and calls and provide appropriate solutions and services.'}
		]
	}
]


// My love, dito mo ilagay yung modal
const modals = [
  {
    title: "Liberty",
    imagePath: liberty,
    description: "Graphic Design"
  },
  {
    title: "Liberty",
    imagePath: liberty,
    description: "Graphic Design"
  }
]



// Methods

function showMenu() {
	menu.active = !menu.active
}

</script>

<template>
  <div>
    <header>   	
   	<div class="row">

   		<div class="top-bar">
   			<a class="menu-toggle" href="#" @click="showMenu"><span>Menu</span></a>

	   		<div class="logo">
				<a href="index.html">KARDS</a>
			</div>		      
		   	<nav id="main-nav-wrap" >
				<ul class="main-navigation">
					<li class="current"><a class="smoothscroll"  href="#intro" title="">Home</a></li>
					<li><a class="smoothscroll"  href="#about" title="">About</a></li>
					<li><a class="smoothscroll"  href="#resume" title="">Resume</a></li>
					<li><a class="smoothscroll"  href="#portfolio" title="">Portfolio</a></li>
					<li><a class="smoothscroll"  href="#services" title="">Services</a></li>					
					<li><a class="smoothscroll"  href="#contact" title="">Contact</a></li>	
					<!-- <li><a href="styles.html" title="">Style Demo</a></li>				 -->
				</ul>
			</nav>    		
   		</div> <!-- /top-bar --> 
   		
   	</div> <!-- /row --> 		
   </header> <!-- /header -->

	<!-- intro section
   ================================================== -->
   <section id="intro">   

   	<div class="intro-overlay"></div>	

   	<div class="intro-content">
   		<div class="row">

   			<div class="col-twelve">

	   			<h5>Konnichiwa</h5>
	   			<h1>I'm Franchezca</h1>

	   			<p class="intro-position">
	   				<!-- <span>Front-end Developer</span> -->
	   				<span>UI/UX SPECIALIST</span> 
	   			</p>

	   			<a class="button stroke smoothscroll" href="#about" title="">More About Me</a>

	   		</div>  
   			
   		</div>   		 		
   	</div> <!-- /intro-content --> 

   	<ul class="intro-social">        
         <li><a href="#"><i class="fa fa-facebook"></i></a></li>
         <li><a href="#"><i class="fa fa-behance"></i></a></li>
         <li><a href="#"><i class="fa fa-twitter"></i></a></li>
         <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
         <li><a href="#"><i class="fa fa-instagram"></i></a></li>
      </ul> <!-- /intro-social -->      	

   </section> <!-- /intro -->


   <!-- about section
   ================================================== -->
	<section id="about">  

		<div class="row section-intro">
			<div class="col-twelve">
				<h5>About</h5>
				<h1>Let me introduce myself.</h1>
				<div class="intro-info">
					<img src="@/assets/images/profile-pic.jpg" alt="Profile Picture">
					<p class="lead">A UI/UX designer obsessed with #81d8d0 and coffee! Most clients and partners call me "Ms. Chiz" 🧀 (instead of Ms. Chez). I've been designing user interfaces for over 5 years, collateral & presentation designs for a decade, and had maybe around 9098 crazy ideas and 10001 coffee cups to keep me awake while working (I'm not complaining coz I love it!). I've worked on everything from app design to development to testing. I used to be a unicorn but I realized that I'm more into designing than developing. In my free time, I enjoy eating, trying out new restaurants with my family, playing duolingo, sleeping, online shopping, "netflixing", and of course, coffeeing! Btw, don't forget to check out my portfolio below. And if you want to download my CV, just shoot me a message or feel free to email me so I can give you a password. See yah! 👋</p>
				</div>   			
			</div>   		
		</div> <!-- /section-intro -->

		<div class="row about-content">
			<div class="col-six tab-full">
				<!-- <h3>Profile</h3>
				<p>Lorem ipsum Qui veniam ut consequat ex ullamco nulla in non ut esse in magna sint minim officia consectetur nisi commodo ea magna pariatur nisi cillum.</p> -->
				<ul class="info-list">
					<li>
						<strong>Fullname:</strong>
						<span>Franchezca Quiocho</span>
					</li>
					<li>
						<strong>Birth Date:</strong>
						<span>04 May</span>
					</li>
					<li>
						<strong>Job:</strong>
						<span>UI/UX Specialist</span>
					</li>
					<li>
						<strong>Github:</strong>
						<span>https://ftquiocho.github.io/portfolio/</span>
					</li>
					<li>
						<strong>Email:</strong>
						<span>iamftq@gmail.com</span>
					</li>
				</ul> <!-- /info-list -->
			</div>

			<div class="col-six tab-full">
				<h3>Prototyping & Design Tools</h3>
				<p>These are my arsenal to perform all my tasks</p>
				<ul class="skill-bars">
					<li v-for="skill, index in skills" :key="index">
						<div :class="`progress percent${skill.percent}`"><span>{{ skill.percent }}</span></div>
						<strong>{{ skill.name }}</strong>
					</li>
				</ul> <!-- /skill-bars -->		
			</div>
		</div>
		<div class="row button-section">
			<div class="col-twelve">
				<a href="#contact" title="Hire Me" class="button stroke smoothscroll">Hire Me</a>
				<a href="#" title="Download CV" class="button button-primary">Download Resume</a>
			</div>   		
		</div>
   </section> <!-- /process-->    


   <!-- resume Section
   ================================================== -->
	<section id="resume" class="grey-section">
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Work Experience</h5>
				<h1>"Every experience is an opportunity to learn and grow"</h1>
				<!-- <p class="lead">Lorem ipsum Do commodo in proident enim in dolor cupidatat adipisicing dolore officia nisi aliqua incididunt Ut veniam lorem ipsum Consectetur ut in in eu do.</p> -->
			</div>   		
		</div> <!-- /section-intro--> 
		<div class="row resume-timeline">
			<!-- <div class="col-twelve resume-header">
				<h2>Work Experience</h2>
			</div> -->
			<div class="col-twelve">
				<div class="timeline-wrap">
					<template v-for="work, index in workExperiences" :key="index">
						<div class="timeline-block" v-for="position, innerIndex in work.positions" :key="innerIndex" >
							<div class="timeline-ico">
								<i class="fa fa-graduation-cap"></i>
							</div>
							<div class="timeline-header" v-if="innerIndex==0">
								<h3>{{ work.company }}</h3>
								<p>{{`${work.from} - ${work.to}`}}</p>
							</div>
							<div class="timeline-content">
								<h4>{{ position.name }}</h4>
								<p v-if="position.from || position.to">{{ `${position.from} - ${position.to}` }}</p>
								<p>{{ position.description }}</p>
							</div>
						</div>
					</template>
				</div> <!-- /timeline-wrap -->   			
			</div> <!-- /col-twelve -->
		</div> <!-- /resume-timeline -->
		
		<div class="row resume-timeline">
			<div class="col-twelve resume-header">
				<h2>Education</h2>
			</div> <!-- /resume-header -->

			<div class="col-twelve">
				<div class="timeline-wrap">
					<div class="timeline-block">
						<div class="timeline-ico">
							<i class="fa fa-briefcase"></i>
						</div>
						<div class="timeline-header">
							<h3>BSBA Computer Management</h3>
							<p>1998 - 2002</p>
						</div>
						<div class="timeline-content">
							<h4>Colegio De San Juan De Letran</h4>
							<!-- <p>Lorem ipsum Occaecat do esse ex et dolor culpa nisi ex in magna consectetur nisi cupidatat laboris esse eiusmod deserunt aute do quis velit esse sed Ut proident cupidatat nulla esse cillum laborum occaecat nostrud sit dolor incididunt amet est occaecat nisi.</p> -->
						</div>
					</div> <!-- /timeline-block -->
				</div> <!-- /timeline-wrap -->   			
			</div> <!-- /col-twelve -->
		</div> <!-- /resume-timeline -->
	</section> <!-- /features -->


	<!-- Portfolio Section
   ================================================== -->
	<section id="portfolio">
		<div class="row section-intro">
			<div class="col-twelve">
				<h5>Portfolio</h5>
				<h1>“UI without UX is like beauty without brains. Not good enough.”</h1>
				<p class="lead">People always judge based on appearances, no matter how good the foundation (UX) is. Thus, user interface is critical. However, beauty without brains will not work. UX is also necessary. Check out some of my works below.</p>
			</div>   		
		</div> <!-- /section-intro--> 

		<div class="row portfolio-content">
			<div class="col-twelve">
				<!-- portfolio-wrapper -->
				<div id="folio-wrapper" class="block-1-2 block-mob-full stack">

					<div class="bgrid folio-item" v-for="modal, index in modals" :key="index">
						<div class="item-wrap">
							<img :src="modal.imagePath" alt="Liberty">
							<a :href="`#modal-${index}`" class="overlay">	                  	           
							<div class="folio-item-table">
								<div class="folio-item-cell">
								<h3 class="folio-title">{{ modal.title }}</h3>	     					    
								<span class="folio-types">{{ modal.description }}</span>
								</div>	                      	
							</div>                    
							</a>
						</div>	               
					</div>

					<!-- <div :id="`modal-${index}`" class="popup-modal slier mfp-hide" v-for="modal, index in modals" :key="index">
						<div class="modal">
							<img :src="modal.imagePath">
						</div>
						<div class="description-box">
							<h4>Liberty</h4>
							<p>Goo goo gaa gaa</p>
							<div class="categories"> Web Development </div>
						</div>
						<div class="link-box">
							<a href="http://www.behance.net">Details</a>
							<a href="#" class="popup-modal-dismiss">Close</a>
						</div>		 
					</div> -->
				</div> <!-- /portfolio-wrapper --> 
			</div>  <!-- /twelve -->   
		</div> <!-- /portfolio-content --> 
	</section> <!-- /portfolio --> 


	<!-- CTA Section
   ================================================== -->
	<section id="cta" class="grey-section">

   	<div class="row cta-content">

   		<div class="col-twelve section-ads">  

	     		<h2 class="h01"><a href="http://www.dreamhost.com/r.cgi?287326|STYLESHOUT">Styleshout Recommends Dreamhost.</a></h2>

		      <p class="lead">
		      Looking for an awesome and reliable webhosting? Try <a href="http://www.dreamhost.com/r.cgi?287326|STYLESHOUT"><span>DreamHost</span></a>.
				Get <span>$50 off</span> when you sign up with the promocode <span>styleshout</span>. 
				<!-- Simply type	the promocode in the box labeled “Promo Code” when placing your order. -->	
				</p>

				<div class="action">
			      <a class="button button-primary large" href="http://www.dreamhost.com/r.cgi?287326|STYLESHOUT">Sign Up Now</a>
		      </div>		     	

   		</div>

   	</div> <!-- /cta-content -->

   </section> <!-- /cta --> 

	
	<!-- services Section
   ================================================== -->
	<section id="services">

		<div class="overlay"></div>

		<div class="row section-intro">
   		<div class="col-twelve">

   			<h5>Services</h5>
   			<h1>What Can I Do For You?</h1>

   			<p class="lead">Lorem ipsum Do commodo in proident enim in dolor cupidatat adipisicing dolore officia nisi aliqua incididunt Ut veniam lorem ipsum Consectetur ut in in eu do.</p>

   		</div>   		
   	</div> <!-- /section-intro -->

   	<div class="row services-content">

   		<div id="owl-slider" class="owl-carousel services-list">

	      	<div class="service">	

	      		<span class="icon"><i class="icon-earth"></i></span>            

	            <div class="service-content">	

	            	 <h3>Webdesign</h3>

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	         		</p>
	         		
	         	</div> 	         	 

				</div> <!-- /service -->

				<div class="service">	

					<span class="icon"><i class="icon-window"></i></span>                          

	            <div class="service-content">	

	            	<h3>Web Development</h3>  

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	         		</p>

	            </div>	                          

			   </div> <!-- /service -->

			   <div class="service">

			   	<span class="icon"><i class="icon-paint-brush"></i></span>		            

	            <div class="service-content">

	            	<h3>Branding</h3>

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	        			</p> 

	            </div> 	            	               

			   </div> <!-- /service -->

				<div class="service">

					<span class="icon"><i class="icon-toggles"></i></span>	              

	            <div class="service-content">

	            	<h3>UI/UX Design</h3>

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	         		</p> 
	         		
	            </div>                

				</div> <!-- /service -->

			   <div class="service">

			   	<span class="icon"><i class="icon-image"></i></span>	            

	            <div class="service-content">

	            	<h3>Graphics Design</h3>

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	        			</p> 

	            </div>	               

			   </div> <!-- /service -->

			   <div class="service">

			   	<span class="icon"><i class="icon-chat"></i></span>	   	           

	            <div class="service-content">

	            	 <h3>Consultancy</h3>

		            <p class="desc">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.
	        			</p> 
	        			
	            </div>	               

			   </div> <!-- /service -->

	      </div> <!-- /services-list -->
   		
   	</div> <!-- /services-content -->
		
	</section> <!-- /services -->	


	<!-- stats Section
   ================================================== -->
	<section id="stats" class="count-up">

		<div class="row">
			<div class="col-twelve">

				<div class="block-1-6 block-s-1-3 block-tab-1-2 block-mob-full stats-list">

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-pencil-ruler"></i>
						</div>

						<h3 class="stat-count">
							1500
						</h3>

						<h5 class="stat-title">
							Projects Completed
						</h5>

					</div> <!-- /stat -->					

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-users"></i>
						</div>

						<h3 class="stat-count">
							900
						</h3>

						<h5 class="stat-title">
							Happy Clients
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-badge"></i>
						</div>

						<h3 class="stat-count">
							200
						</h3>

						<h5 class="stat-title">
							Awards Received
						</h5>

					</div> <!-- /stat -->									

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-light-bulb"></i>
						</div>

						<h3 class="stat-count">
							120
						</h3>

						<h5 class="stat-title">
							Crazy Ideas
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-cup"></i>
						</div>

						<h3 class="stat-count">
							1500
						</h3>

						<h5 class="stat-title">
							Coffee Cups
						</h5>

					</div> <!-- /stat -->

					<div class="bgrid stat">

						<div class="icon-part">
							<i class="icon-clock"></i>
						</div>

						<h3 class="stat-count">
							7200
						</h3>

						<h5 class="stat-title">
							Hours
						</h5>

					</div> <!-- /stat -->

				</div> <!-- /stats-list -->

			</div> <!-- /twelve -->
		</div> <!-- /row -->

	</section> <!-- /stats -->

	
   <!-- contact
   ================================================== -->
	<section id="contact">

		<div class="row section-intro">
   		<div class="col-twelve">

   			<h5>Contact</h5>
   			<h1>I'd Love To Hear From You.</h1>

   			<p class="lead">Lorem ipsum Do commodo in proident enim in dolor cupidatat adipisicing dolore officia nisi aliqua incididunt Ut veniam lorem ipsum Consectetur ut in in eu do.</p>

   		</div> 
   	</div> <!-- /section-intro -->

   	<div class="row contact-form">

   		<div class="col-twelve">

            <!-- form -->
            <form name="contactForm" id="contactForm" method="post" action="">
      			<fieldset>

                  <div class="form-field">
 						   <input name="contactName" type="text" id="contactName" placeholder="Name" value="" minlength="2" required="">
                  </div>
                  <div class="form-field">
	      			   <input name="contactEmail" type="email" id="contactEmail" placeholder="Email" value="" required="">
	               </div>
                  <div class="form-field">
	     				   <input name="contactSubject" type="text" id="contactSubject" placeholder="Subject" value="">
	               </div>                       
                  <div class="form-field">
	                 	<textarea name="contactMessage" id="contactMessage" placeholder="message" rows="10" cols="50" required=""></textarea>
	               </div>                      
                 <div class="form-field">
                     <button class="submitform">Submit</button>
                     <div id="submit-loader">
                        <div class="text-loader">Sending...</div>                             
       				      <div class="s-loader">
								  	<div class="bounce1"></div>
								  	<div class="bounce2"></div>
								  	<div class="bounce3"></div>
								</div>
							</div>
                  </div>

      			</fieldset>
      		</form> <!-- Form End -->

            <!-- contact-warning -->
            <div id="message-warning">            	
            </div>            
            <!-- contact-success -->
      		<div id="message-success">
               <i class="fa fa-check"></i>Your message was sent, thank you!<br>
      		</div>

         </div> <!-- /col-twelve -->
   		
   	</div> <!-- /contact-form -->

   	<div class="row contact-info">

   		<div class="col-four tab-full">

   			<div class="icon">
   				<i class="icon-pin"></i>
   			</div>

   			<h5>Where to find me</h5>

   			<p>
            1600 Amphitheatre Parkway<br>
            Mountain View, CA<br>
            94043 US
            </p>

   		</div>

   		<div class="col-four tab-full collapse">

   			<div class="icon">
   				<i class="icon-mail"></i>
   			</div>

   			<h5>Email Me At</h5>

   			<p>someone@kardswebsite.com<br>
			   	info@kardswebsite.com			     
			   </p>

   		</div>

   		<div class="col-four tab-full">

   			<div class="icon">
   				<i class="icon-phone"></i>
   			</div>

   			<h5>Call Me At</h5>

   			<p>Phone: (+63) 555 1212<br>
			   	Mobile: (+63) 555 0100<br>
			     	Fax: (+63) 555 0101
			   </p>

   		</div>
   		
   	</div> <!-- /contact-info -->
		
	</section> <!-- /contact -->


   <!-- footer
   ================================================== -->

   <footer>
     	<div class="row">

     		<div class="col-six tab-full pull-right social">

     			<ul class="footer-social">        
			      <li><a href="#"><i class="fa fa-facebook"></i></a></li>
			      <li><a href="#"><i class="fa fa-behance"></i></a></li>
			      <li><a href="#"><i class="fa fa-twitter"></i></a></li>
			      <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
			      <li><a href="#"><i class="fa fa-instagram"></i></a></li>
			   </ul> 
	      		
	      </div>

      	<div class="col-eight tab-full">
	      	<div class="copyright">
		        	<span>© Copyright 2018 </span> 
		        	<span>Design by <a href="http://www.styleshout.com/">styleshout</a></span> 
		        	<span>Distributed by <a href="https://themewagon.com/">themewagon</a></span>	         	
		         </div>		                  
	      	</div>

	      	<div id="go-top">
		         <a class="smoothscroll" title="Back to Top" href="#top"><i class="fa fa-long-arrow-up"></i></a>
		      </div>

      	</div> <!-- /row -->     	
   </footer>  

   <!-- <div id="preloader"> 
    	<div id="loader"></div>
   </div>  -->
  </div>
</template>

<style>

</style>
