#include<pic.h>
void delay(unsigned int i)
{
	while(i--);
}
void dit()
{
	RD0=1;
	RD1=1;
	delay(3000);
	RD0=0;
	RD1=0;
	delay(3000);
}
void daa()
{
	RD0=1;
	RD1=1;
	delay(9000);
	RD0=0;
	RD1=0;
	delay(9000);
}
void a()
{
	dit();
	daa();
}
void b()
{	
	daa();
	dit();
	dit();
	dit();
}
void c()
{
	daa();
	dit();	
	daa();
	dit();	
}
void d()
{
	daa();
	dit();
	daa();
}
void e()
{
	dit();
}
void f()
{
	dit();
	dit();
	daa();
	dit();
}
void g()
{
	daa();
	daa();
	dit();
}
void h()
{
	dit();
	dit();
	dit();
	dit();
}
void i()
{
	dit();
	dit();
}
void j()
{
	dit();
	daa();
	daa();
	daa();
}
void k()
{
	daa();
	dit();
	daa();
}
void l()
{
	dit();
	daa();
	dit();
	dit();
}
void m()
{
	daa();
	daa();
}
void n()
{
	daa();
	dit();
}
void o()
{
	daa();
	daa();
	daa();
	daa();
}
void p()
{
	dit();
	daa();
	daa();
	dit();
}
void q()
{	
	daa();
	daa();
	dit();
	daa();
}
void r()
{
	dit();
	daa();
	dit();
}
void s()
{
	dit();
	dit();
	dit();
}
void t()
{
	daa();
}
void u()
{
	dit();
	dit();
	daa();
}
void v()
{
	dit();
	dit();
	dit();
	daa();
}
void w()
{
	dit();
	dit();
	dit();
	daa();
}
void x()
{
	daa();
	dit();
	dit();
	daa();
}
void y()
{
	daa();
	dit();
	daa();
	daa();
}
void z()
{
	daa();
	daa();
	dit();
	dit();
}
void zero()
{
	daa();
	daa();
	daa();
	daa();
	daa();
}
void one()
{
	dit();
	daa();
	daa();
	daa();
	daa();
}
void two()
{
	daa();
}
void three()
{

	daa();
}
void four()
{
	dit();
	dit();
	dit();
	dit();
	daa();
}
void five()
{
	dit();
	dit();
	dit();
	dit();
	dit();
}
void six()
{
	daa();
	dit();
	dit();
	dit();
	dit();
}
void seven()
{
	daa();
	daa();
	dit();
	dit();
	dit();
}
void eight()
{
	daa();
	daa();
	daa();
	dit();
	dit();
}
void nine()
{
	daa();
	daa();
	daa();
	daa();
	dit();
}
void dot()
{
	dit();
	daa();
	dit();
	daa();
	dit();
	daa();
}
void comma()
{
	daa();
	daa();
	dit();
	daa();
	daa();
}
void qm()
{
	dit();
	dit();
	daa();
	daa();
	dit();
	dit();
}
void em()
{
	daa();
	dit();
	daa();
	dit();
	daa();
	daa();
}
void err()
{
	dit();
	dit();
	dit();
	dit();
	dit();
	dit();
	dit();
	dit();
	dit();
	dit();
}
void Latch()
{
	RD3=1;
	delay(50);
	RD3=0;
	delay(100);
}
	void cmd()
{
	RD2=0;
	Latch();
}
void dat()
{
	RD2=1;
	Latch();
}
void main()
{
	char ch;
	ANSELH=0X00;
	TRISB=0x00;
	PORTB=0x00;
	TRISC=0x80;
	PORTC=0x00;
	TRISD=0x00;
	TXSTA=0x20;
	RCSTA=0x90;
	SPBRG=25;
	cmd();
	PORTB=0x38;
	cmd();
	PORTB=0x0C;
	cmd();
	PORTB=0x01;
	cmd();
	PORTB=0x80;
	cmd();
	while(1)
	{
		
		RCIF=0;
		while(RCIF==0);
		ch=RCREG;
		PORTB=ch;
		dat();
		if(ch=='A')
		{
				dit();
				daa();
		}
		else if(ch=='B')
			b();
		else if(ch=='C')
			c();
		else if(ch=='D')
			d();
		else if(ch=='E')
			e();
		else if(ch=='F')
			f();
		else if(ch=='G')
			g();
		else if(ch=='H')
			h();
		else if(ch=='I')
			i();
		else if(ch=='J')
			j();
		else if(ch=='K')
			k();
		else if(ch=='L')
			l();
		else if(ch=='M')
			m();
		else if(ch=='N')
			n();
		else if(ch=='O')
			o();
		else if(ch=='P')
			p();
		else if(ch=='Q')
			q();
		else if(ch=='R')
			r();
		else if(ch=='S')
			s();
		else if(ch=='T')
			t();
		else if(ch=='U')
			u();
		else if(ch=='V')
			v();
		else if(ch=='w')
			w();
		else if(ch=='X')
			x();
		else if(ch=='Y')
			y();
		else if(ch=='Z')
			z();
		else if(ch=='0')
			zero();
		else if(ch=='1')
			one();
		else if(ch=='2')
			two();
		else if(ch=='3')
			three();
		else if(ch=='4')
			four();
		else if(ch=='5')
			five();
		else if(ch=='6')
			six();
		else if(ch=='7')
			seven();
		else if(ch=='8')
			eight();
		else if(ch=='9')
			nine();
		else if(ch=='.')
			dot();
		else if(ch==',')
			comma();
		else if(ch=='?')
			qm();
		else if(ch=='!')
			em();
		else
			err();
	}
}
		