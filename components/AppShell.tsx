import Sidebar from './Sidebar'
export default function AppShell({children}:{children:React.ReactNode}){return <div className="min-h-screen md:flex"><Sidebar/><main className="flex-1 p-6 md:p-10">{children}</main></div>}
