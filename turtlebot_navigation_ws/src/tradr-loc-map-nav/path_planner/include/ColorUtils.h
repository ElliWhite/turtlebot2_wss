#ifndef COLOR_UTILS_H_
#define COLOR_UTILS_H_




///\class Color 
///\brief Basic class for openGL color management in Qt
///\author Luigi Freda
class Color
{
	/// \brief Default constructor
	public: Color(): r(0), g(0), b(0), a(1) {}
	
	/// \brief Constructor
	public: Color(float _r, float _g, float _b, float _a = 1.) : r(_r), g(_g), b(_b), a(_a) {}
	
	/// Red color information
	public: float r;
	
	/// Green color information
	public: float g;
	
	/// Blue color information
	public: float b;
	
	/// Alpha color information
	public: float a;
};


///\namespace Colors
///\brief Some predefined colors.
///\author Luigi Freda
namespace Colors
{

	static const float NONE		= 0.00;
	static const float DARK		= 0.33;
	static const float MEDIUM	= 0.66;
	static const float LIGHT	= 0.99;
        
        enum ColorType {kWhite = 0, kRed, kGreen, kBlue, kMagenta, kCyan, kYellow, kOrange, kBlack, kNumColors};

        /// < colors definitions 
	inline const Color Black()		{return Color(NONE,NONE,NONE);}
	inline const Color White()		{return Color(1.,1.,1.);}
	/*grey*/
	inline const Color DarkGrey()		{return Color(DARK,DARK,DARK);}
	inline const Color LightGrey()	{return Color(MEDIUM,MEDIUM,MEDIUM);}
	/*red*/
	inline const Color LightRed()		{return Color(LIGHT,NONE,NONE);}
	inline const Color Red()		{return Color(MEDIUM,NONE,NONE);}
	inline const Color DarkRed()		{return Color(DARK,NONE,NONE);}
	/*green*/
	inline const Color LightGreen()	{return Color(NONE,LIGHT,NONE);}
	inline const Color Green()		{return Color(NONE,MEDIUM,NONE);}
	inline const Color DarkGreen()	{return Color(NONE,DARK,NONE);}
	/*blue*/
	inline const Color LightBlue()	{return Color(NONE,NONE,LIGHT);}
	inline const Color Blue()		{return Color(NONE,NONE,MEDIUM);}
	inline const Color DarkBlue()		{return Color(NONE,NONE,DARK);}
	/*magenta*/
	inline const Color LightMagenta()	{return Color(LIGHT,NONE,LIGHT);}
	inline const Color Magenta()		{return Color(MEDIUM,NONE,MEDIUM);}
	inline const Color DarkMagenta()	{return Color(DARK,NONE,DARK);}
	/*cyan*/
	inline const Color LightCyan()	{return Color(NONE,LIGHT,LIGHT);}
	inline const Color Cyan()		{return Color(NONE,NONE,MEDIUM);}
	inline const Color DarkCyan()		{return Color(NONE,DARK,DARK);}
	/*yellow*/
	inline const Color LightYellow()	{return Color(LIGHT,LIGHT,NONE);}
	inline const Color Yellow()		{return Color(MEDIUM,MEDIUM,NONE);}
	inline const Color DarkYellow()	{return Color(DARK,DARK,NONE);}
	/*orange*/
	inline const Color Orange()		{return Color(LIGHT,MEDIUM,NONE);}
	inline const Color DarkOrange()	{return Color(MEDIUM,DARK,NONE);}
	/******/
        
        inline const Color GetColor(int i)
        {
            i = i % kNumColors;
            switch(i)
            {
            case kWhite: { return White(); }
            case kRed: { return Red(); }
            case kGreen: { return Green(); }
            case kBlue: { return Blue(); }
            case kMagenta: { return Magenta(); }
            case kCyan: { return Cyan(); }
            case kYellow: { return Yellow(); }
            case kOrange: { return Orange(); }
            case kBlack: { return Black(); }
            default: { return White(); }
            }
        }

}


#endif // COLOR_UTILS_H_
